cask "flow" do
  version "6.1.2.1968"
  sha256 :no_check

  url "https://cdn.getflow.com/darwin_x64/Flow.zip"
  name "Flow"
  desc "Task and project management software"
  homepage "https://www.getflow.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Flow.app"
end
