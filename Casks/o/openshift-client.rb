cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.8"
  sha256 arm:   "a41d114404f196f4ed1b512851b604bc87b8c188e8eeaa36f10e1827b70b7cdb",
         intel: "65e8e7e010e9423a4134dc99cf3d6dc99c7bbccf9d6068505e813ac084268762"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "oc"

  zap trash: "~/.kube/config"
end
