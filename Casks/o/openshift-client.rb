cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.2"
  sha256 arm:   "f38cb7a9e0911f28f36d3592d68ad66d7f60b6529e2495db1c262fdd096c0ee4",
         intel: "cb9528ae3b83ca79d1073b166dc4f8d18c1005ab4ee1e24bb261283c52ba0e71"

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
