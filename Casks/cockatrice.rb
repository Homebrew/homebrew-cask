cask "cockatrice" do
  version "2.8.0,2021-01-26:Prismatic.Bridge"

  if MacOS.version <= :mojave
    sha256 "53a4db3e3b97196b42c20959da701de5713f0811907d07ba187192f53fccef1d"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macOS-10.14_Mojave.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"
  elsif MacOS.version <= :catalina
    sha256 "b4953e77a01c639563d6e05acb40c9ca266616e15d941dea592d10904082470f"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macOS-10.15_Catalina.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"
  else
    sha256 "a200400b24d24c8e3e32f849e23d6714548a203d68a4456cee219901507bcd49"

    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macOS-11.0_Big_Sur.dmg",
        verified: "github.com/Cockatrice/Cockatrice/"
  end

  name "Cockatrice"
  desc "Virtual tabletop for multiplayer card games"
  homepage "https://cockatrice.github.io/"

  livecheck do
    url "https://github.com/Cockatrice/Cockatrice/releases/latest"
    strategy :page_match do |page|
      match = page.match(
        %r{href=.*?/(\d+(?:-\d+)*)-Release-(\d+(?:\.\d+)*)/Cockatrice-([^/]+)-\2-macOS-[.\w]*\.dmg}i,
      )
      "#{match[2]},#{match[1]}:#{match[3]}"
    end
  end

  depends_on macos: ">= :mojave"

  app "cockatrice.app"
  app "oracle.app"
  app "servatrice.app"

  uninstall quit: [
    "com.cockatrice.cockatrice",
    "com.cockatrice.oracle",
    "com.cockatrice.servatrice",
  ]

  zap trash: [
    "~/Library/Application Support/Cockatrice",
    "~/Library/Preferences/com.cockatrice.Cockatrice.plist",
    "~/Library/Preferences/com.cockatrice.oracle.plist",
    "~/Library/Preferences/de.cockatrice.Cockatrice.plist",
    "~/Library/Saved Application State/com.cockatrice.cockatrice.savedState",
    "~/Library/Saved Application State/com.cockatrice.oracle.savedState",
  ]
end
