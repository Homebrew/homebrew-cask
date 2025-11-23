cask "projectlibre" do
  version "1.9.8"
  sha256 "d5648a8cb3fd6a1f316eafe051fc9adbdd9a77eb825aec278f7959eeb7dc9723"

  url "https://downloads.sourceforge.net/projectlibre/ProjectLibre/#{version.major_minor}/ProjectLibre-#{version}.dmg",
      verified: "sourceforge.net/projectlibre/"
  name "ProjectLibre"
  desc "Microsoft Project in your browser"
  homepage "https://www.projectlibre.com/"

  app "ProjectLibre.app"

  zap trash: "~/Library/Preferences/com.projectlibre#{version.major}.*"
end
