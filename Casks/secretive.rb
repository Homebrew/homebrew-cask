cask "secretive" do
  if MacOS.version <= :catalina
    version "1.0.3"
    sha256 "d8522c153f20cd03513e6815bdb46be98eae0db2b2a45d30f60b25a6609d1657"
  else
    version "2.1.0"
    sha256 "5921d8c452ac9e4f5d749dac162cb5b04c44bc13436314e3675579921311dc95"
  end

  url "https://github.com/maxgoedjen/secretive/releases/download/v#{version}/Secretive.zip"
  name "Secretive"
  desc "Store SSH keys in the Secure Enclave"
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
