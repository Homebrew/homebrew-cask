cask "starnet++" do
  version "2,03,2022"
  sha256 "35f0c11f49a1bde466e317565e75beb32b57ebfead85379c23cc3953c1c42fc7"

  url "https://starnetastro.com/wp-content/uploads/#{version.csv.third}/#{version.csv.second}/StarNetv#{version.csv.first}CLI_MacOS.zip"
  name "starnet++"
  desc "Removes stars from astrophotography images using ML models"
  homepage "https://www.starnetastro.com/"

  livecheck do
    url "https://www.starnetastro.com/download/"
    regex(%r{uploads/(\d+)/(\d+)/StarNetv?(\d+(?:\.\d+)*)CLI[._-]MacOS\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  bin_path = "#{staged_path}/StarNetv#{version.csv.first}CLI_MacOS"

  command_wrapper "starnet_wrapper.sh",
                  target:  "starnet++",
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

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
