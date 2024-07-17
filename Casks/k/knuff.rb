cask "knuff" do
  version "1.3"
  sha256 "06c6bb6d2254211f4369a9903aefb61eb894c706b08635091f457d1730b79c69"

  url "https://github.com/KnuffApp/Knuff/releases/download/v#{version}/Knuff.app.zip"
  name "Knuff"
  desc "Debug application for Apple Push Notification Service (APNs)"
  homepage "https://github.com/KnuffApp/Knuff"

  depends_on macos: ">= :sierra"

  app "Knuff.app"

  caveats do
    requires_rosetta
  end
end
