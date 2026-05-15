cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "9.2"
  sha256 arm:   "4378fb9bc5d83617486ff824b520a30207b226e2b8df261085c22e3cd4bccf8a",
         intel: "5800b27952449c749a57b2d8dd0255b6825e5a37b519c573a3ff053a6c0bbd3a"

  url "https://github.com/Pinegrow/PinegrowReleases/releases/download/pg#{version}/PinegrowMac#{arch}.#{version}.dmg",
      verified: "github.com/Pinegrow/PinegrowReleases/"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^pg(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
