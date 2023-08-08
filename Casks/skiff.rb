cask "skiff" do
  version "0.4.0"
  sha256 "283b7b8f594095f0049201ff9433d77b5e504dfa84e7b9736a4447a692e1b514"

  url "https://raw.githubusercontent.com/skiff-org/skiff-org.github.io/main/macos/Skiff%20Desktop%20#{version}.dmg",
      verified: "raw.githubusercontent.com/skiff-org/skiff-org.github.io/main/macos/"
  name "Skiff"
  desc "End-to-end encrypted email, calendar, documents, and files support"
  homepage "https://skiff.com/"

  livecheck do
    url "https://github.com/skiff-org/skiff-org.github.io/tree/main/macos"
    regex(/Skiff[\s._-]Desktop[\s._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Skiff Desktop.app"

  zap trash: [
    "~/Library/Application Scripts/org.reactjs.native.Skiff-Desktop",
    "~/Library/Containers/org.reactjs.native.Skiff-Desktop",
  ]
end
