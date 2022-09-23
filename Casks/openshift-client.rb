cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.6"
  sha256 arm:   "e438592b3aad2d7ccc073c7521e94ec9275dcac546cc49c28c5e61c404472902",
         intel: "69f9724456e6f53f6e5e40250cfd5d302430aedd935a132f748662f510fb9a30"

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
