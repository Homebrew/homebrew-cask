cask "sidex" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "849fd26e236feee1c3628732a73c72bb43c6765fbfe7cf4c6d0805d089f59f0a",
         intel: "67b1d7be4d273e9cae3297cb5ee0fd422046c29bb8a862ecbb6de411ee8beb47"

  url "https://github.com/Sidenai/sidex/releases/download/v#{version}/SideX_#{version}_#{arch}.dmg"
  name "SideX"
  desc "Code editor based on VS Code and Tauri"
  homepage "https://github.com/Sidenai/sidex"

  depends_on :macos

  app "SideX.app"

  zap trash: [
    "~/.sidex",
    "~/Library/Application Support/com.siden.sidex",
    "~/Library/Caches/com.siden.sidex",
    "~/Library/WebKit/com.siden.sidex",
  ]
end
