cask "macvim-app" do
  version "181,9.1.1128"
  sha256 "ebcab36471c0ddfb91630eae285f57ac9a9a7cb4b233413128aba9039e6a467f"

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
  depends_on macos: ">= :high_sierra"

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
