cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.15.9"
  sha256 arm:          "fa0b29716b04c7ad47d0825d4885443f273f6dcd2bbb6bebd88f2a9525133771",
         intel:        "3628a3e55e766f4641b6a63a6e76c5ab474b83fd2e0dff2b491e386d776f4973",
         arm64_linux:  "2a4da9f9b8f6496966d8a0190df334f3fd6ed1ea1042defbac59343fef0fe79c",
         x86_64_linux: "d19dce05088136e164a53b9e447a5e0207f47168e009ffc48b69b58bc2464095"

  url "https://terminal-browser.sh/install/dl/stable/v#{version}/terminal-browser-#{os}-#{arch}.tar.gz"
  name "terminal-browser"
  desc "Terminal-based web browser"
  homepage "https://terminal-browser.com/"

  livecheck do
    url "https://terminal-browser.sh/install/latest.json"
    strategy :json do |json|
      json["version"]&.delete_prefix("v")
    end
  end

  binary "terminal-browser/bin/terminal-browser"

  zap trash: [
    "~/.agents/skills/terminal-browser",
    "~/.cache/terminal-browser-*",
    "~/.claude/skills/terminal-browser",
    "~/.codex/skills/terminal-browser",
    "~/.cursor/skills/terminal-browser",
    "~/.gemini/skills/terminal-browser",
    "~/.local/share/terminal-browser-*",
    "~/.local/state/terminal-browser",
    "~/.local/state/terminal-browser-*",
  ]
end
