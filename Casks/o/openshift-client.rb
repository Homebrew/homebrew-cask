cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.3"
  sha256 arm:   "7b21b05c3a1116c449fbcc972132e308439d32b4e5f3f2354187c9df8d74d0b3",
         intel: "b7e0287fc33ccf293287e4b6be910657794583fdd2088c0df79d59d371eef53c"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
