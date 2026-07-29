cask "p4v" do
  version "2026.2,2984595"
  sha256 "9c9367ab96f667d4f1c0fd7e283e4e3678fbed1f570c8238121914b204ad3aac"

  url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx12u/P4V.dmg"
  name "Perforce Helix Visual Client"
  name "P4Merge"
  name "P4V"
  desc "Visual client for Helix Core"
  homepage "https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v"

  livecheck do
    url "https://help.perforce.com/helix-core/release-notes/current/p4vnotes.txt"
    regex(%r{\(\s*v?(\d+(?:\.\d+)+)/(\d+)\s*\)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :big_sur

  app "p4v.app"
  app "p4admin.app"
  app "p4merge.app"
  binary "p4vc"
  command_wrapper "p4v",
                  executable: "#{appdir}/p4v.app/Contents/MacOS/p4v"
  command_wrapper "p4admin",
                  executable: "#{appdir}/p4admin.app/Contents/MacOS/p4admin"
  command_wrapper "p4merge",
                  executable: "#{appdir}/p4merge.app/Contents/Resources/launchp4merge"

  zap trash: [
    "~/Library/Preferences/com.perforce.p4v",
    "~/Library/Preferences/com.perforce.p4v.plist",
    "~/Library/Saved Application State/com.perforce.p4v.savedState",
  ]
end
