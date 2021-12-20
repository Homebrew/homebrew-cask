cask "inkdrop" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.4.3"

  if Hardware::CPU.intel?
    sha256 "40e15dbd8df80764f8776caf593b6f3214d479ea752016ea313b1abaed5c2325"
  else
    sha256 "ed016a680c71e4526ae9c54a045bba0b0226f27d676a9402b844e23205b1e938"
  end

  url "https://d3ip0rje8grhnl.cloudfront.net/v#{version}/Inkdrop-#{version}-#{arch}-Mac.zip",
      verified: "d3ip0rje8grhnl.cloudfront.net/"
  name "Inkdrop"
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
