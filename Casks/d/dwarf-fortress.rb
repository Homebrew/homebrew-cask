cask "dwarf-fortress" do
  version "0.47.05"
  sha256 "bc79a92adb96497d59546378e8c9ab2ef67ca22abfbd9763616de9c2e00e5f24"

  url "https://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name "Dwarf Fortress"
  desc "Single-player fantasy game"
  homepage "https://www.bay12games.com/dwarves/"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/df_osx/df.wrapper.sh"
  binary shimscript, target: "dwarf-fortress"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/df_osx/df' "$@"
    EOS
  end

  uninstall_preflight do
    if Dir.exist?("#{staged_path}/df_osx/data/save")
      FileUtils.cp_r("#{staged_path}/df_osx/data/save", "/tmp/dwarf-fortress-save/")
    end
  end

  caveats
    discontinued

  <<~EOS
    During uninstall, your save data will be copied to /tmp/dwarf-fortress-save
  EOS
end
