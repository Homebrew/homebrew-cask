cask "secretive" do
  version "2.0.0"
  sha256 "5d5b2f5073dcd6be48712f45d1c4214bc6ab170fe750a80da0562cdc92d84bc0"

  url "https://github.com/maxgoedjen/secretive/releases/download/v#{version}/Secretive.zip"
  appcast "https://github.com/maxgoedjen/secretive/releases.atom"
  name "Secretive"
  desc "Store SSH keys in the Secure Enclave"
  homepage "https://github.com/maxgoedjen/secretive"

  depends_on macos: ">= :big_sur"

  app "Secretive.app"

  zap trash: [
    "~/Library/Application Scripts/com.maxgoedjen.Secretive.Host",
    "~/Library/Application Scripts/com.maxgoedjen.Secretive.SecretAgent",
    "~/Library/Containers/com.maxgoedjen.Secretive.Host",
    "~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent",
  ]
end
