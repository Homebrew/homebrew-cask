cask "juicebar" do
  version "1.0.78"
  sha256 "528a719ccf4fac49a1935e43e00ca5aeb4f3e821b99e76f8f0ec9767d204dd51"

  url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
  name "JuiceBar"
  desc "Marketplace for Resolume"
  homepage "https://get-juicebar.com/"

  livecheck do
    url "https://mango.get-juicebar.com/v#{version.major}/bundles/macOS/latest"
    strategy :header_match
  end

  app "JuiceBar.app"
end
