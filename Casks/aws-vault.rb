cask "aws-vault" do
  arch arm: "arm64", intel: "amd64"

  version "7.0.2"
  sha256 arm:   "9314b0fc3aac18acc56430c0ded5626e53e921a48a29b50b7ca75d91d2ce927d",
         intel: "9284fe20c24e19562be4c3ff7987c2df48757123e83a4420f1b049c7ee57ce22"

  url "https://github.com/99designs/aws-vault/releases/download/v#{version}/aws-vault-darwin-#{arch}.dmg"
  name "aws-vault"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/99designs/aws-vault"

  binary "aws-vault"
end
