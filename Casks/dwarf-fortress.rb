cask 'dwarf-fortress' do
  version '0.44.09'
  sha256 '1abb4d9ceaf125116fa9cafc592324bf79630277ac5373a5aa28569a1ed2ba05'

  url "http://www.bay12games.com/dwarves/df_#{version.minor}_#{version.patch}_osx.tar.bz2"
  name 'Dwarf Fortress'
  homepage 'http://www.bay12games.com/dwarves/'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/df_osx/df.wrapper.sh"
  binary shimscript, target: 'dwarf-fortress'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/df_osx/df' "$@"
    EOS
  end

  uninstall_preflight do
    FileUtils.cp_r("#{staged_path}/df_osx/data/save", '/tmp/dwarf-fortress-save/') if Dir.exist?("#{staged_path}/df_osx/data/save")
  end

  caveats <<~EOS
    During uninstall, your save data will be copied to /tmp/dwarf-fortress-save
  EOS
end
