cask "jet" do
  version "2.15.0"
  sha256 "1b07ea4c3efd48a030943d0fde81a1e4ec1fa0a1c35a06ba52b9ac031f5aef3f"

  url "https://codeship-jet-releases.s3.amazonaws.com/#{version}/jet-darwin_amd64_#{version}.tar.gz",
      verified: "codeship-jet-releases.s3.amazonaws.com/"
  name "Codeship Jet"
  desc "CI/CD as a service"
  homepage "https://docs.cloudbees.com/docs/cloudbees-codeship/latest/"

  livecheck do
    url "https://codeship-jet-releases.s3.amazonaws.com/latest/version"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "jet"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
