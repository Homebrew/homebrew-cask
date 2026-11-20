cask "jamulus" do
  version "3.12.6"
  sha256 "d1fd341d327a027144f83156f5e958807779a69d22876bbde5a21d90c381432c"

  url "https://github.com/jamulussoftware/jamulus/releases/download/r#{version.tr(".", "_")}/jamulus_#{version}_mac.dmg"
  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  livecheck do
    url :url
    regex(/^r?(\d+(?:_\d+)+)$/i)
    strategy :git do |tags, regex|
      tags.filter_map do |tag|
        tag[regex, 1]&.tr("_", ".")
      end
    end
  end

  depends_on macos: :ventura

  app "Jamulus.app"
  app "JamulusServer.app"

  zap trash: [
    "~/Library/Application Scripts/app.jamulussoftware.Jamulus*",
    "~/Library/Containers/app.jamulussoftware.Jamulus*",
  ]
end
