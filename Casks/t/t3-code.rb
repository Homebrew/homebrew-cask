cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.3"
  sha256 arm:   "d3104279b1194532bbeab917063ef2f04e7b91e1b48456c3fdbe1868bcdd80f8",
         intel: "ef27751ffadc5fa8e90aed2f873e913931e6ddfeb3665a8faaac9887d4b4b9ea"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg"
  name "T3 Code"
  desc "Minimal GUI for code agents like Codex"
  homepage "https://github.com/pingdotgg/t3code"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  auto_updates true

  app "T3 Code (Alpha).app"

  uninstall quit: "com.t3tools.t3code"
end
