cask "alfaview" do
  version "8.17.0"
  sha256 "4965126d5e235b37a62b4db58150c6aca88bca736cd3efcf57d710fa8110b52d"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    strategy :page_match
    regex(/alfaview-mac-production-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
