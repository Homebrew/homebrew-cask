cask "macvim-app" do
  version "184,9.2.1252"
  sha256 "9e980b758b3855deb8dca78b05335c85bfd3592a79d5d52ce104b3f20ed4f6e8"

  url "https://github.com/macvim-dev/macvim/releases/download/release-#{version.csv.first}/MacVim.dmg"
  name "MacVim"
  desc "Text editor"
  homepage "https://github.com/macvim-dev/macvim"

  livecheck do
    url "https://macvim.org/appcast/latest.xml"
    strategy :sparkle do |items|
      item = items.find { |item| item.channel.nil? }

      "#{item.version},#{item.short_version}"
    end
  end

  auto_updates true
  depends_on :macos

  app "MacVim.app"

  %w[
    gview
    gvim
    gvimdiff
    gvimex
    mview
    mvim
    mvimdiff
    mvimex
    view
    vim
    vimdiff
    vimex
    vi
  ].each { |link_name| binary "#{appdir}/MacVim.app/Contents/bin/mvim", target: link_name }

  zap trash: [
    "~/Library/Caches/org.vim.MacVim",
    "~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist",
    "~/Library/Preferences/org.vim.MacVim.plist",
  ]
end
