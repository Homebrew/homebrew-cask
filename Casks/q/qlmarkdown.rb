cask "qlmarkdown" do
  version "1.5.7"
  sha256 "96cc95553ee63557f7ec58f41a568ff1fe5bca95b6bcd3883709fa8337c685d4"

  url "https://github.com/sbarex/QLMarkdown/releases/download/#{version}/QLMarkdown.zip"
  name "sbarex QLMarkdown"
  desc "Quick Look generator for Markdown files"
  homepage "https://github.com/sbarex/QLMarkdown"

  # The Sparkle feed contains `pubDate` values that are in Italian (e.g.
  # mar, 31 dic 2024 18:36:00 +0100), so the `Sparkle` strategy doesn't
  # accurately sort the items by date. We have to work with all the feed items
  # in the `strategy` block, as a way of avoiding the sorting issues.
  livecheck do
    url "https://sbarex.github.io/QLMarkdown/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "QLMarkdown.app"
  binary "#{appdir}/QLMarkdown.app/Contents/Resources/qlmarkdown_cli"

  uninstall quit: "org.sbarex.QLMarkdown"

  zap trash: [
    "~/Library/Application Scripts/group.org.sbarex.qlmarkdown",
    "~/Library/Application Scripts/org.sbarex.QLMarkdown",
    "~/Library/Application Scripts/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Application Scripts/org.sbarex.QLMarkdown.Shortcut-Extension",
    "~/Library/Application Support/QLMarkdown",
    "~/Library/Containers/org.sbarex.QLMarkdown",
    "~/Library/Containers/org.sbarex.QLMarkdown.QLExtension",
    "~/Library/Containers/org.sbarex.QLMarkdown.Shortcut-Extension",
    "~/Library/Group Containers/group.org.sbarex.qlmarkdown",
    "~/Library/Group Containers/org.sbarex.QLMarkdown",
    "~/Library/Group Containers/org.sbarex.qlmarkdown",
    "~/Library/Preferences/org.sbarex.QLMarkdown.plist",
    "~/Library/Preferences/org.sbarex.QLMarkdownXPCHelper.plist",
    "~/Library/QuickLook/QLMarkdown.qlgenerator",
  ]
end
