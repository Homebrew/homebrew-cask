cask "terraprep" do
  arch arm: "arm64", intel: "amd64"

  version "beta_0.8.0"
  sha256 arm:   "126defedf3a7b52402580d29240fd904cbeaf661fc59243c633d95a2bc151be4",
         intel: "a630b3d9ea0fbe89a9fc6105eb836da2cf950e251635266c8322b39240be6dea"

  url "https://s3.eu-west-1.wasabisys.com/noss/terraprep/#{version}/terraprep_#{version}_darwin_#{arch}.zip",
      verified: "s3.eu-west-1.wasabisys.com/noss/terraprep/"
  name "Terraprep"
  desc "OpenTofu & Terraform remote backend creation client"
  homepage "https://www.terraprep.xyz/"

  livecheck do
    url :url
    regex(/terraprep[._-](beta[._-]v?\d+(?:[._]\d+)+)/)
  end

  depends_on macos: ">= :sonoma"

  binary "terraprep_#{version}_darwin_#{arch}", target: "terraprep"

  zap trash: "~/.terraprep"
end
