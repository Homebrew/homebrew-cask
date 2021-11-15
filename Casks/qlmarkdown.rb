cask "qlmarkdown" do
  if MacOS.version < :catalina
    version "1.3.6"
    sha256 "810853c000dd5c3e18978070abb7f595ad52ddfa568fccb428d28b513d1810ab"

    url "https://github.com/toland/qlmarkdown/releases/download/v#{version}/QLMarkdown.qlgenerator.zip"
    name "QLMarkdown"
    desc "QuickLook generator for Markdown files (macOS Mojave and earlier)"
    homepage "https://github.com/toland/qlmarkdown"

    depends_on macos: "< :catalina"
  else
    version "1.0.5"
    sha256 "d0d040a8cb4df32561366eefd908fbcf69c3aaf87e319681777bf18812002679"

    url "https://github.com/sbarex/QLMarkdown/releases/download/#{version}/QLMarkdown.zip"
    name "QLMarkdown"
    desc "QuickLook generator for Markdown files (macOS Catalina and later)"
    homepage "https://github.com/sbarex/QLMarkdown"

    auto_updates true
    depends_on macos: ">= :catalina"

    app "QLMarkdown.app"
  end

  zap trash: [
    "~/Library/QuickLook/QLMarkdown.qlgenerator",
    "~/Library/Application Scripts/org.sbarex.QLMarkdown",
    "~/Library/Application Scripts/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Containers/org.sbarex.QLMarkdown",
    "~/Library/Containers/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Preferences/org.sbarex.QLMarkdown.plist",
  ]
end
