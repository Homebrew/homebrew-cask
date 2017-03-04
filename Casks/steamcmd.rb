cask 'steamcmd' do
  version :latest
  sha256 :no_check

  # steamcdn-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz'
  name 'SteamCMD'
  homepage 'https://developer.valvesoftware.com/wiki/SteamCMD'

  auto_updates true

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/steamcmd.sh.wrapper.sh"
  binary shimscript, target: 'steamcmd'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      exec '#{staged_path}/steamcmd.sh' "$@"
    EOS
    set_permissions shimscript, '+x'
  end
end
