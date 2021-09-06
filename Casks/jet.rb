cask "jet" do
  version "2.11.0"
  sha256 "90c4f04fc4e4ecb62bdf24b95cb6fa9bd2fb999a7a3cd6aec12672fd86c73239"

  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz",
      verified: "s3.amazonaws.com/codeship-jet-releases/"
  name "Codeship Jet"
  desc "CI/CD as a service"
  homepage "https://docs.cloudbees.com/docs/cloudbees-codeship/latest/"

  livecheck do
    url "https://docs.cloudbees.com/docs/cloudbees-codeship/latest/pro-jet-cli/release-notes"
    regex(/"title":"(\d+(?:\.\d+)*)/i)
  end

  binary "jet"
end
