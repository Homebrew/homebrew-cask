cask "re-trace" do
  version "1.0.1-beta.0"
  sha256 "28db7777ae1b63b875eb7d6ceeed2a677cbcff55960375c0af22ea5e044e42ad"

  url "https://github.com/Staffbase/retrace/releases/download/v#{version}/RE-Trace-#{version}.dmg"
  name "RE-Trace"
  desc "Micro-journaling app"
  homepage "https://github.com/Staffbase/retrace/"

  depends_on macos: ">= :sierra"

  app "RE-Trace.app"

  zap trash: "~/Library/Application Support/RE-Trace"
end
