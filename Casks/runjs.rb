cask "runjs" do
  version "2.0.0"

  if Hardware::CPU.intel?
    sha256 "ced55fe78b8486ce7e3627a76b5dd9a4cd8b5385565ab563fcafc530fbfb3fde"

    url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg",
        verified: "github.com/lukehaas/runjs/"
  else
    sha256 "e1c67d3a0149adad1d0beeacc79e17e154fd5830e3575aa2766b2ccd3f896a0b"

    url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}-arm64.dmg",
        verified: "github.com/lukehaas/runjs/"
  end

  name "RunJS"
  desc "JavaScript playground that auto-evaluates as code is typed"
  homepage "https://runjs.app/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "RunJS.app"

  zap trash: [
    "~/Library/Application Support/runjs",
    "~/Library/Logs/RunJS",
    "~/Library/Preferences/me.lukehaas.runjs.plist",
    "~/Library/Saved Application State/me.lukehaas.runjs.savedState",
  ]
end
