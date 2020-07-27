cask "dwarf-fortress" do
  version "0.47.04"
  sha256 "1b424d530554399fa3897a9e7a902f6a93e2eb1b680fdeffbac416bb4a312f30"

  url "https://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name "Dwarf Fortress"
  homepage "https://www.bay12games.com/dwarves/"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/df_osx/df.wrapper.sh"
  binary shimscript, target: "dwarf-fortress"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/df_osx/df' "$@"
    EOS
  end

  uninstall_preflight do
    if Dir.exist?("#{staged_path}/df_osx/data/save")
      FileUtils.cp_r("#{staged_path}/df_osx/data/save", "/tmp/dwarf-fortress-save/")
    end
  end

  caveats <<~EOS
    During uninstall, your save data will be copied to /tmp/dwarf-fortress-save
  EOS
end
