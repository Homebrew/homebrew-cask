cask "starnet++" do
  version "2,03,2022"
  sha256 :no_check

  url "https://download.starnetastro.com/legacy/StarNetv2CLI_MacOS.zip"
  name "starnet++"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://www.starnetastro.com/"

  deprecate! date: "2026-10-26", because: :unmaintained

  depends_on :macos

  bin_path = "#{staged_path}/StarNetv#{version.csv.first}CLI_MacOS"

  command_wrapper "starnet++",
                  content: <<~EOS
                    #!/bin/sh

                    # delete the symlink on process exit
                    cleanup() {
                      rm -f starnet#{version.csv.first}_weights.pb
                    }
                    trap cleanup RETURN EXIT SIGINT SIGKILL

                    # the binary hardcodes the weights path so we have to symlink it to the CWD
                    ln -sf "#{bin_path}/starnet#{version.csv.first}_weights.pb" .

                    # define a load path since the libs are not in the same dir as the bin
                    DYLD_LIBRARY_PATH=#{bin_path} command #{bin_path}/starnet++ $@
                  EOS

  postflight_steps do
    set_permissions "StarNetv*CLI_MacOS/starnet++", "0755"
  end

  zap :not_required
end
