cask "clariti" do
  version "1.2.0,81"
  sha256 "94c4f3a78c71c9014f615887a4027d2d00733a14a56b17dc6c81e991cb523055"

  url "https://d3dsf8uz95lw15.cloudfront.net/builds/macos/Clariti-#{version.tr(",", ".")}.dmg",
      verified: "d3dsf8uz95lw15.cloudfront.net/"
  name "Clariti"
  desc "Focus and relaxation soundscapes"
  homepage "https://clariti.io/"

  livecheck do
    url "https://d3dsf8uz95lw15.cloudfront.net/builds/macos/clariti-macos.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Clariti.app"

  zap trash: [
    "~/Library/Application Support/Clariti",
    "~/Library/Logs/Clariti",
    "~/Library/Preferences/io.clariti.plist",
  ]
end
