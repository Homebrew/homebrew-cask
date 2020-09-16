cask "eclipse-jee" do
  version "4.17.0,2020-09:R"
  sha256 "3dd3b50914a26726a70245e766fec321f56d1f03aced7d5f7128d2b72b5c0d16"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for Java EE Developers"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse JEE.app"

  zap trash: [
    "~/Library/Caches/org.eclipse.platform.ide",
    "~/Library/Cookies/org.eclipse.platform.ide.binarycookies",
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]

  caveats do
    depends_on_java
  end
end
