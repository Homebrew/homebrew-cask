cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.1"
  sha256 arm:   "50490fe72504be15865537f820104577f94fcdbb634cbdfc0c2bb03ae6c4ee4b",
         intel: "103b62b54a33570a61c070423c25feba65c9dd1def5e548937aa43907784d4c1"

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
