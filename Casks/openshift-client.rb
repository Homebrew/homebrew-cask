cask "openshift-client" do
  version "4.11.0"

  if Hardware::CPU.intel?
    sha256 "8fcfb2d9cc81894dda9a6fbd91dda77cec598aaeee668abf05c4903a51c1138d"
  else
    sha256 "9c5875208ce1da5a0463fb847942bbdd08116dbd122a2e0ebb6167e5ebeec127"
  end

  arch = Hardware::CPU.intel? ? "" : "-arm64"
  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
