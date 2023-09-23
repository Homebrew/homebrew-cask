cask "oscar" do
  version "1.5.1"
  sha256 "09b1ff0499b6ec90e22069ce44d68b1e94f7d456cb93a5817b412fa20c891580"

  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "OSCAR.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]
end
