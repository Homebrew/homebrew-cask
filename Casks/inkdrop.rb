cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "5.5.2"
  sha256 arm:   "913f6c181a1164d79068f57297d39a5564a27808ba464e7fb0ae1b3035fff611",
         intel: "c4aa3592c153ad86bf674e706a1848e643307a8263c53ae831088d178a842232"

  url "https://d3ip0rje8grhnl.cloudfront.net/v#{version}/Inkdrop-#{version}-#{arch}-Mac.zip",
      verified: "d3ip0rje8grhnl.cloudfront.net/"
  name "Inkdrop"
  desc "Markdown editor"
  homepage "https://www.inkdrop.info/"

  livecheck do
    url "https://api.inkdrop.app/update/links"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
  ]
end
