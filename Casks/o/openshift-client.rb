cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.3"
  sha256 arm:   "f1a1c0d6eef92601be7c67bd46075d078ccba865e208c71a7264fc9851653b38",
         intel: "75756671c4eb6a63d231e58c7206a4609a5394d2b82bd9e4ade0e9914c99736b"

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
