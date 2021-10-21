cask "postman" do  
  if Hardware::CPU.intel?
    version "9.1.1"
    url "https://dl.pstmn.io/download/version/#{version}/osx64",
       verified: "dl.pstmn.io/download/version/"
    sha256 "8b84a23b699aa9b7f83488d1ca5b05a309f4cda1c26d0e4a90b69a459af19cbd"
  else
    version "9.0.7"
    url "https://dl.pstmn.io/download/version/#{version}/osx_arm64",
       verified: "dl.pstmn.io/download/version/"
    sha256 "33a3b4686ddf873cfefa9301b763da411265c94ccd880b2607e7177129ffc8f2"
  end

  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/notes?from=#{version}&channel=stable&platform=osx"
    strategy :page_match do |page|
      JSON.parse(page)["notes"][0]["version"]
    end
  end

  auto_updates true

  app "Postman.app"

  zap trash: [
    "~/Library/Application Support/Postman",
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/Postman",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Caches/com.postmanlabs.mac.ShipIt",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
