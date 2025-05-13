cask "barrier" do
  version "2.4.0"
  sha256 "af938d17dcea5701da7a990705acbd0686dfedfdbcd64721666ae0bef7644ba9"

  url "https://github.com/debauchee/barrier/releases/download/v#{version}/Barrier-#{version}-Release.dmg"
  name "Barrier"
  desc "Open-source KVM software"
  homepage "https://github.com/debauchee/barrier/"

  deprecate! date: "2025-05-13", because: :unmaintained

  depends_on macos: ">= :sierra"

  app "Barrier.app"

  zap trash: [
    "~/Library/Application Support/barrier",
    "~/Library/Saved Application State/barrier.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
