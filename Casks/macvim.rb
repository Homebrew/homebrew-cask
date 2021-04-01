cask "macvim" do
  version "171"
  sha256 "f7137ec22d2f3a3e149abdacb4a3c6f6ab626eaf574f63600bd36d1cfd9bd5f0"

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version}/MacVim.dmg"
  name "MacVim"
  desc "Text editor"
  homepage "https://github.com/macvim-dev/macvim"

  livecheck do
    url :url
    strategy :git
  end

  auto_updates true
  conflicts_with formula: "macvim"

  app "MacVim.app"

  %w[
    gview
    gvim
    gvimdiff
    mview
    mvim
    mvimdiff
    view
    vim
    vimdiff
  ].each { |link_name| binary "#{appdir}/MacVim.app/Contents/bin/mvim", target: link_name }

  zap trash: [
    "~/Library/Caches/org.vim.MacVim",
    "~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist",
    "~/Library/Preferences/org.vim.MacVim.plist",
  ]
end
