cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.9"
  sha256 arm:   "4ec1f14fa015e770b2fbf4e05ffb268a1754a3d99c7c3b5382d99608129e0258",
         intel: "8c037c687d868174ccd25583880ff8934724e38bb340e25b87581818c7ed2795"

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
