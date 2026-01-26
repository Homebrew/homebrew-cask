cask "mjolnir" do
  version "1.0.2"
  sha256 "eb39b9ff76258c3aa7970f70465a7c858290ce798e5b8e411cb5b7d300de16d1"

  url "https://github.com/mjolnirapp/mjolnir/releases/download/#{version}/Mjolnir.app.zip"
  name "Mjolnir"
  desc "Lightweight automation and productivity app"
  homepage "https://github.com/mjolnirapp/mjolnir"

  deprecate! date: "2025-11-30", because: :unmaintained
  disable! date: "2026-11-30", because: :unmaintained

  app "Mjolnir.app"

  zap trash: [
    "~/.mjolnir",
    "~/Library/Caches/org.degutis.Mjolnir",
    "~/Library/Preferences/org.degutis.Mjolnir.plist",
    "~/Library/Saved Application State/org.degutis.Mjolnir.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
