cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.9"
  sha256 arm:          "700f639091faa0267b8fde34e9e09bf908436902311811a458f5d61554bd99b8",
         intel:        "2acdfe964dd67a77073db03ce6c35401fecb325855b03a519f24f665f163f964",
         arm64_linux:  "ea80b6b8951bbdaf5962dba53b08048c11f6f62008748e6fb698b32457af612b",
         x86_64_linux: "fc7ccb76c548035928acec44e0e13ee06f5ae2d585c55f25e6f0ebb9dbef5480"

  url "https://atomgit.com/atomgit_atomcode/atomcode/releases/download/v#{version}/atomcode-v#{version}-#{os}-#{arch}.tar.gz"
  name "AtomCode"
  desc "Open-source terminal AI coding agent"
  homepage "https://atomgit.com/atomgit_atomcode/atomcode"

  livecheck do
    url "https://api.atomgit.com/api/v5/repos/atomgit_atomcode/atomcode/releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  binary "atomcode"

  zap rmdir: "~/.atomcode"
end
