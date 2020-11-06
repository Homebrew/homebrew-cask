cask "hockey" do
  version "2.0.22,508"
  sha256 "2b8a6589e860e12dfd420a9cdd3c1bf884340c38f3d5d5dda524df733d48f514"

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1"
  name "HockeyApp"
  homepage "https://hockeyapp.net/releases/mac/"

  app "HockeyApp.app"
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"
end
