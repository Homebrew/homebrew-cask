cask "openarena" do
  version "0.8.8,r28"
  sha256 "5a8faf7f5b51f351b0a1618c06b6b98a5f1a6758f1d39818de2c87df2a0bac4a"

  # download.tuxfamily.org/openarena/ was verified as official when first introduced to the cask
  url "https://download.tuxfamily.org/openarena/rel/#{version.before_comma.no_dots}/openarena-#{version.before_comma}.zip"
  name "OpenArena"
  homepage "https://openarena.ws/smfnews.php"

  app "openarena-#{version.before_comma}/OpenArena #{version.before_comma} #{version.after_comma}.app"

  postflight do
    system_command "/bin/mv", args: ["#{staged_path}/openarena-#{version.before_comma}/baseoa", "#{appdir}/OpenArena #{version.before_comma} #{version.after_comma}.app/Contents/MacOS"]
    set_permissions "#{appdir}/OpenArena #{version.before_comma} #{version.after_comma}.app/Contents/MacOS/openarena.ub", "755"
  end
end
