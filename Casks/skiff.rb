cask "skiff" do
  version "0.3.0"
  sha256 "fce28da19b2f0f0cd84b2ba232fe8f80c83bd76005c4dae77c68ebe29e04b345"

  url "https://raw.githubusercontent.com/skiff-org/skiff-org.github.io/main/macos/Skiff%20Desktop%20#{version}.dmg",
      verified: "raw.githubusercontent.com/skiff-org/skiff-org.github.io/main/macos/"
  name "Skiff"
  desc "End-to-end encrypted email, calendar, documents, and files support"
  homepage "https://skiff.com/"

  livecheck do
    url "https://skiff.com/download"
    regex(%r{/Skiff(?:%20|[._-])Desktop(?:%20|[._-])v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "Skiff Desktop.app"

  zap trash: [
    "~/Library/Application Scripts/org.reactjs.native.Skiff-Desktop",
    "~/Library/Containers/org.reactjs.native.Skiff-Desktop",
  ]
end
