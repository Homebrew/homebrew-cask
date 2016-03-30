cask 'steamcmd' do
  version :latest
  sha256 :no_check

  # steamcdn-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz'
  name 'SteamCMD'
  homepage 'https://developer.valvesoftware.com/wiki/SteamCMD'
  license :gratis

  auto_updates true

  shimscript = "#{staged_path}/__cask_wrapper.sh"
  binary shimscript, target: 'steamcmd'

  preflight do
    set_permissions "#{staged_path}/steamcmd", '+x'

    File.open(shimscript, 'w') do |f|
      f.puts '#!/usr/bin/env bash'
      f.puts 'cd $(dirname $(readlink $_))'
      f.puts './steamcmd.sh "$@"'
      FileUtils.chmod '+x', f
    end
  end
end
