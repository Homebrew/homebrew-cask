cask "oscar" do
  arch arm: "ARM", intel: "Intel"

  version "2.0.1"
  sha256 arm:   "c52994d58254242c58a9d532d03753bb597575272c1a6fe3129d79f686c05f86",
         intel: "16d518bb04e32cf58d748cb4f05e5c703a36f3da654d70b77896cebd1683c5da"

  on_arm do
    url "https://www.sleepfiles.com/OSCAR/#{version}/OSCAR-#{version}-#{arch}.dmg"
  end
  on_intel do
    url "https://www.sleepfiles.com/OSCAR/#{version}/OSCAR#{version.major_minor.no_dots}-#{version}-#{arch}.dmg"
  end

  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR.*?v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "OSCAR#{version.major_minor.no_dots}.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]
end
