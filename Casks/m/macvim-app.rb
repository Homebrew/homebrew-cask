cask "macvim-app" do
  version "182,9.1.1887"
  sha256 "b24294ef8327b9abe703c9d28fcbfc76b413923b90185af259a656ea36308950"

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
