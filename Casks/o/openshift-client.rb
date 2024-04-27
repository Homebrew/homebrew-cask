cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.11"
  sha256 arm:   "d73354f2cf0c9c2635d8dd0afc5463e54f93fffc3a1f505e2a3ac5eea0a6b380",
         intel: "b6c0097038d56bdb01a6d6ec4d653126c49aaf1266efcecde7761f881bbecd54"

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
