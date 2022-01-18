cask "fnatic-op" do
  version "0.0.49"
  sha256 :no_check

  url "https://op-releases.tools.fnatic.io/download/macos",
      verified: "op-releases.tools.fnatic.io/"
  name "Fnatic OP"
  desc "Customize your FNATICGEAR devices"
  homepage "https://fnatic.com/gear/op"

  app "Fnatic OP.app"

  uninstall quit: "com.fnatic.FnaticOP"

  zap trash: [
    "~/Library/Preferences/com.fnatic.FnaticOP.helper.plist",
    "~/Library/Preferences/com.fnatic.FnaticOP.plist",
    "~/Library/Logs/Fnatic OP",
    "~/Library/Saved Application State/com.fnatic.FnaticOP.savedState",
    "~/Library/Caches/com.fnatic.FnaticOP*",
    "~/Library/Application Support/fnaticop",
  ]
end
