cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.3.1"
  sha256 arm:   "4ebf4dcf264b8626e09ecc074d90bf6775a88e34e51f92d9fa3e66c8ecde3d48",
         intel: "e2b46daf548298be716ac4cd951edcbde5ffd556f3cbedc03f01079f1a340042"

  url "https://dist.inkdrop.app/releases/inkdrop-#{version}-#{arch}-mac.zip"
  name "Inkdrop"
  desc "Markdown editor"
  homepage "https://www.inkdrop.app/"

  livecheck do
    url "https://dist.inkdrop.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/info.pkpk.inkdrop.sfl*",
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end
