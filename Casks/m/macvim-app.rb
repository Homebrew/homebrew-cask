cask "macvim-app" do
  version "183,9.2.321"
  sha256 "c27fb8948328074dcb81f45b7d88ff4e123a86c06eaf3d5b330369bc39ffab69"

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
