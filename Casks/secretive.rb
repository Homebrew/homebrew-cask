cask "secretive" do
  on_catalina :or_older do
    version "1.0.3"
    sha256 "d8522c153f20cd03513e6815bdb46be98eae0db2b2a45d30f60b25a6609d1657"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "2.3.0"
    sha256 "5fcfb9e22ae05fa61971b7c57089f70d36d1673e00dd395e3e859e58521282a6"

    livecheck do
      url :url
      strategy :github_latest
    end
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
