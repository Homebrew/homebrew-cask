cask "readmoreading" do
  version "0.11.8"
  sha256 "997da8763676b40846876679b1d9541df93ee84e91ecfd5c024659ff8608e2b2"

  url "https://cdn.readmoo.com/download/apps/desktop/osx64/el/Readmoo_Desktop-#{version}.dmg"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url "https://readmoo.com/download/osx"
    strategy :header_match
  end

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Logs/Readmoo看書",
    "~/Library/Application Support/Readmoo看書",
  ]
end
