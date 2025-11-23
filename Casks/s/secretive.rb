cask "secretive" do
  on_ventura :or_older do
    on_catalina :or_older do
      version "1.0.3"
      sha256 "d8522c153f20cd03513e6815bdb46be98eae0db2b2a45d30f60b25a6609d1657"
    end
    on_big_sur do
      version "2.3.1"
      sha256 "493a72362898b4480baa70f115d9515b41b2af4a503caf00277e2bc3824b0bbd"
    end
    on_monterey :or_newer do
      version "2.4.1"
      sha256 "00ddf651f1151f1e3888c51e58ce343f6888480db79771b6de7371db21bde4d8"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "3.0.3"
    sha256 "ab8a7d6b590b3313f7bb383b881fb40ad1ffe4ab848580e9b08899b3e60c323d"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/maxgoedjen/secretive/releases/download/v#{version}/Secretive.zip"
  name "Secretive"
  desc "Store SSH keys in the Secure Enclave"
  homepage "https://github.com/maxgoedjen/secretive"

  app "Secretive.app"

  zap trash: [
    "~/Library/Application Scripts/com.maxgoedjen.Secretive.Host",
    "~/Library/Application Scripts/com.maxgoedjen.Secretive.SecretAgent",
    "~/Library/Containers/com.maxgoedjen.Secretive.Host",
    "~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent",
  ]
end
