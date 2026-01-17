cask "terramate-catalyst" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.2-beta11"
  sha256 arm:   "d84706a9569d2bc3b9136498e9bbb31c2f9bd015e5a1dec8648f5f4401c4ba10",
         intel: "b2c264e9c939b3664a24ce9103b9280dcfc88e77b8e473a782c4877aead2eb68"

  url "https://github.com/terramate-io/terramate-catalyst/releases/download/v#{version}/terramate-catalyst_#{version}_darwin_#{arch}.tar.gz",
      verified: "github.com/terramate-io/terramate-catalyst/"
  name "Terramate Catalyst"
  desc "Manage IaC stacks with scaffolding, code generation, and orchestration"
  homepage "https://terramate.io/docs/catalyst/overview"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\d+)?)$/i)
  end

  binary "terramate"

  zap trash: "~/.terramate.d"
end
