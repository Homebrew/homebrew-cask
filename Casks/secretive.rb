cask "secretive" do
  version "1.0.2"
  sha256 "464ab05baaf14246476a04d05b439776ade06e2937477535a7ea68fa947f507f"

  url "https://github.com/maxgoedjen/secretive/releases/download/v#{version}/Secretive.zip"
  appcast "https://github.com/maxgoedjen/secretive/releases.atom"
  name "Secretive"
  homepage "https://github.com/maxgoedjen/secretive"

  depends_on macos: ">= :catalina"

  app "Secretive.app"

  zap trash: [
    "~/Library/Application Scripts/com.maxgoedjen.Secretive.Host",
    "~/Library/Application Scripts/com.maxgoedjen.Secretive.SecretAgent",
    "~/Library/Containers/com.maxgoedjen.Secretive.Host",
    "~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent",
  ]
end
