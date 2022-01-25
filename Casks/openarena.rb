cask "openarena" do
  version "0.8.8,r28"
  sha256 "5a8faf7f5b51f351b0a1618c06b6b98a5f1a6758f1d39818de2c87df2a0bac4a"

  url "https://download.tuxfamily.org/openarena/rel/#{version.csv.first.no_dots}/openarena-#{version.csv.first}.zip",
      verified: "download.tuxfamily.org/openarena/"
  name "OpenArena"
  homepage "https://openarena.ws/smfnews.php"

  app "openarena-#{version.csv.first}/OpenArena #{version.csv.first} #{version.csv.second}.app"

  postflight do
    system_command "/bin/mv", args: ["#{staged_path}/openarena-#{version.csv.first}/baseoa", "#{appdir}/OpenArena #{version.csv.first} #{version.csv.second}.app/Contents/MacOS"]
    set_permissions "#{appdir}/OpenArena #{version.csv.first} #{version.csv.second}.app/Contents/MacOS/openarena.ub", "755"
  end
end
